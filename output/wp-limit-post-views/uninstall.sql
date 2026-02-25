-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wplpv-post-view-count', 'wplpv-post-view-count-unit', 'wplpv-redirect-on-limit', 'wplpv-redirect-location', 'wplpv-use-js', 'wplpv-using-pmppro', 'wplpv-db-version', 'pmprolpv_redirect_page');
DELETE FROM wp_options WHERE option_name LIKE 'wplpv_post_view_limit_%';
DELETE FROM wp_options WHERE option_name LIKE 'wplpv_pmppro_limit_%';

