// ── Helpers ───────────────────────────────────────
const el = (id) => document.getElementById(id);

// ── Render functions ──────────────────────────────
function renderHeader(data) {
  const photo = el('profile.photo');
  if (photo) { photo.src = data.photo; photo.alt = data.name; }

  const name = el('profile.name');
  if (name) name.textContent = data.name;

  const job = el('profile.job');
  if (job) job.textContent = `${data.job}${data.company ? ' · ' + data.company : ''}`;

  const location = el('profile.location');
  if (location) location.textContent = data.location;

  // Phone: only update text, keep WhatsApp href from HTML
  const phone = el('profile.phone');
  if (phone) phone.textContent = data.phone;

  const email = el('profile.email');
  if (email) {
    email.textContent = data.email;
    email.href = `mailto:${data.email}`;
  }

  const github = el('profile.github');
  if (github && data.github) {
    github.href = data.github;
    github.textContent = 'GitHub';
  }
}

function renderSummary(data) {
  const node = el('profile.summary');
  if (!node || !data.summary) return;
  const paragraphs = data.summary.split('\n\n');
  node.innerHTML = paragraphs.map(p => `<p>${p}</p>`).join('');
}

function renderHardSkills(data) {
  const list = el('profile.skills.hardSkills');
  if (!list) return;
  list.innerHTML = data.skills.hardSkills.map(skill => `
    <li>
      <img src="${skill.logo}" alt="${skill.name}" loading="lazy">
      <span>${skill.name}</span>
    </li>
  `).join('');
}

function renderSoftSkills(data) {
  const list = el('profile.skills.softSkills');
  if (!list) return;
  list.innerHTML = data.skills.softSkills
    .map(skill => `<li>${skill}</li>`)
    .join('');
}

function renderEducation(data) {
  const list = el('profile.education');
  if (!list || !data.education) return;
  list.innerHTML = data.education.map(edu => `
    <li>
      <div class="edu-header">
        <p class="edu-course">${edu.degree}</p>
        <span class="edu-period">${edu.period}</span>
      </div>
      <p class="edu-institution">${edu.institution}</p>
      <p class="edu-location">${edu.location}</p>
      <div class="edu-meta">
        ${edu.average ? `<span class="edu-badge">${edu.average}</span>` : ''}
        ${edu.gpa ? `<span class="edu-badge">${edu.gpa}</span>` : ''}
        ${edu.highlight ? `<span class="edu-badge edu-badge--highlight">${edu.highlight}</span>` : ''}
      </div>
    </li>
  `).join('');
}

function renderCertifications(data) {
  const list = el('profile.certifications');
  if (!list || !data.certifications) return;
  list.innerHTML = data.certifications.map(cert => `
    <li>
      <span class="cert-name">${cert.name}</span>
      <span class="cert-issuer">${cert.issuer}</span>
    </li>
  `).join('');
}

function renderPortfolio(data) {
  const list = el('profile.portfolio');
  if (!list) return;
  const items = data.portfolio || data['Certificações e Cursos'] || [];
  list.innerHTML = items.map(project => `
    <li>
      <div class="project-header">
        <h3>${project.name}</h3>
        ${project.github ? '<span class="project-badge">GitHub</span>' : ''}
      </div>
      ${project.description ? `<p>${project.description}</p>` : ''}
      <a href="${project.url}" target="_blank" rel="noopener">${project.url}</a>
    </li>
  `).join('');
}

function renderExperience(data) {
  const list = el('profile.professionalExperience');
  if (!list) return;
  list.innerHTML = data.professionalExperience.map(exp => `
    <li>
      <div class="exp-header">
        <div>
          <p class="exp-role">${exp.role}</p>
          <p class="exp-company">${exp.company}</p>
          <p class="exp-location">${exp.location}</p>
        </div>
        <span class="exp-period">${exp.period}</span>
      </div>
      <ul class="exp-bullets">
        ${exp.bullets.map(b => `<li>${b}</li>`).join('')}
      </ul>
    </li>
  `).join('');
}

// ── Init ──────────────────────────────────────────
(async () => {
  try {
    const data = await fetchProfileData();
    renderHeader(data);
    renderSummary(data);
    renderHardSkills(data);
    renderSoftSkills(data);
    renderEducation(data);
    renderCertifications(data);
    renderExperience(data);
    renderPortfolio(data);
  } catch (err) {
    console.error('Erro ao inicializar portfólio:', err);
  }
})();
