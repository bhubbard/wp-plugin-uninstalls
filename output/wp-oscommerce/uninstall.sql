-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wposwidget_new', 'wposcdir', 'wposcimh_w', 'wposcimw_w', 'limit_new_w', 'wposwidget_rand', 'limit_rand_w', 'wposcimh', 'wposcimw', 'limit_new', 'limit_rand', 'limit_best');

