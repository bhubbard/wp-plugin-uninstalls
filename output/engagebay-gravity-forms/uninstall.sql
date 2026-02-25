-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('engagebay_domain', 'gravityformsaddon_engagebay_version');

