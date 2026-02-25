-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp247_body_classes_css', 'wp247_body_classes_scroll', 'wp247_body_classes_custom', 'wp247_body_classes_mobile');

