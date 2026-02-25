-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ae_access_token', 'dm_redirect_admin', 'rb_skin', 'rb_exclude_bootstrap_js', 'rb_exclude_bootstrap_css');

