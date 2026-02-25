-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('v7_legacy_editor_redirect', 'v7_legacy_editor_posts', 'v7_legacy_editor_pages');

