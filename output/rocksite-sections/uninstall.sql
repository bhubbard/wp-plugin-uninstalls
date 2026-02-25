-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rocksite_blocks_library_activation_redirect', 'rocksite_kit_css', 'kadence_blocks_redirect_on_activation');

