-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hrsticoninsert', 'hrstbgcolor', 'hrsthover', 'hrsticon-left-right', 'hrsticon-roundcorner', 'hrstspeed', 'hrst_plugin_do_activated');

