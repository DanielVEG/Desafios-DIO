document.querySelectorAll('.acordeon .trigger').forEach((trigger) => {
  trigger.addEventListener('click', () => {
    const acordeon = trigger.parentElement;
    const isOpen = acordeon.classList.contains('open');

    // Close all others
    document.querySelectorAll('.acordeon.open').forEach((el) => {
      if (el !== acordeon) el.classList.remove('open');
    });

    acordeon.classList.toggle('open', !isOpen);
  });
});
