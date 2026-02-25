-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('is-page-404tboc', 'page-404tboc', 'startText404tboc', 'text-button-main404tboc', 'text-button-continue404tboc', 'text-button-restart404tboc', 'is-text-button-restart404tboc', 'is-text-support404tboc', 'skin-404tboc');

