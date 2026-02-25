-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ccm_post_types');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('critical_css_apply', 'critical_css');
DELETE FROM wp_usermeta WHERE meta_key IN ('critical_css_apply', 'critical_css');
DELETE FROM wp_termmeta WHERE meta_key IN ('critical_css_apply', 'critical_css');
DELETE FROM wp_commentmeta WHERE meta_key IN ('critical_css_apply', 'critical_css');

