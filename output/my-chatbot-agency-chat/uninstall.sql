-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mca_onboarding', 'room_ID', 'chat_ID', 'website_verify');

