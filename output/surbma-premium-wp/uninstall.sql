-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('surbma_premium_wp_google_analytics_fields', 'surbma_premium_wp_social_fields', 'surbma_premium_wp_google_tag_manager_fields', 'surbma_premium_wp_extra_fields');

