-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ultimate_instagram_enable_accessibility', 'ultimate-instagram-skip-premium', 'ultimate_instagram_addons', 'ultimate-feed-wizard-set-up', 'ultimate_instagram_recent_log_file', 'ultimate_instagram_pagination_entries', 'ultimate_instagram_pagination_listings', 'active_sitewide_plugins');

