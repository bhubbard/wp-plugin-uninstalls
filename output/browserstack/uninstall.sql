-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('browserstack_screenshot_testing', 'preview_key_field', 'draft_public_preview_field');

