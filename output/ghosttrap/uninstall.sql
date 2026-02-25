-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ghosttrap_settings', 'ghosttrap_stats', 'ghosttrap_install_date');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ghosttrap_review_dismissed', 'ghosttrap_review_dismissed_time', 'ghosttrap_donation_shown', 'ghosttrap_positive_review_action', 'ghosttrap_info_visibility');
DELETE FROM wp_usermeta WHERE meta_key IN ('ghosttrap_review_dismissed', 'ghosttrap_review_dismissed_time', 'ghosttrap_donation_shown', 'ghosttrap_positive_review_action', 'ghosttrap_info_visibility');
DELETE FROM wp_termmeta WHERE meta_key IN ('ghosttrap_review_dismissed', 'ghosttrap_review_dismissed_time', 'ghosttrap_donation_shown', 'ghosttrap_positive_review_action', 'ghosttrap_info_visibility');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ghosttrap_review_dismissed', 'ghosttrap_review_dismissed_time', 'ghosttrap_donation_shown', 'ghosttrap_positive_review_action', 'ghosttrap_info_visibility');

