-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sproutedwebchat_gtmetrix_key', 'sproutedwebchat_gtmetrix_credit', 'sproutedwebchat_active', 'sproutedwebchat_license_key', 'sproutedwebchat_license_details', 'sproutedwebchat_other_details', 'sproutedwebchat_other_common', 'sproutedwebchat_gtmetrix_location', 'sproutedwebchat_gtmetrix_browsers', 'sproutedwebchat_activate', 'sproutedwebchat_gtmetrix_log', 'sproutedwebchat_plan_features', 'sproutedwebchat_plan_name', 'sproutedwebchat_license_log', 'sproutedwebchat_gtmetrix_other_details', 'sproutedwebchat_gtmetrix_packages');

