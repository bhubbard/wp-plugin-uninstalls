-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ayudawp_nsm_dismissed_notices', 'wpseo_taxonomy_meta', 'aioseo_options', 'ayudawp_nsm_settings', 'ayudawp_nsm_reset_success', 'ayudawp_nsm_seo_plugin_dismissed', 'ayudawp_nsm_promo_dismissed', 'ayudawp_nsm_noindex_notice', 'ayudawp_nsm_seo_plugin_notice', 'ayudawp_nsm_promo_notice');

