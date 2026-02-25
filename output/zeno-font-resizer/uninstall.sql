-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zeno_font_resizer', 'zeno_font_resizer_ownelement', 'zeno_font_resizer_resizeMax', 'zeno_font_resizer_resizeMin', 'zeno_font_resizer_resizeSteps', 'zeno_font_resizer_letter', 'zeno_font_resizer_cookieTime', 'zeno_font_resizer_ownid');

