-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jvm_richtext_icons_activated', 'jvm_richtext_icons_review_dismissed', 'jvm-rich-text-icons');

