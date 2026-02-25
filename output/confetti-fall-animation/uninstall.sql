-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('confetti-popup-delay', 'confetti_welcome_shown', 'confetti-popup-content', 'confetti-popup-pages', 'confetti_active', 'popup_background_image');

