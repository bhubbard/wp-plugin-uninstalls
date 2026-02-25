-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vicomi_feelbacks_api_key', 'vicomi_activation_redirect', 'vicomi_feelbacks_uuid', 'vicomi_feelbacks_replace', 'vicomi_feelbacks_active', 'vicomi_checkboxes', 'vicomi_exclude_pages_id');

