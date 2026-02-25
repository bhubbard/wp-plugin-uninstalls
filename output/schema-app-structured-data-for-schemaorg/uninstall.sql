-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('schema_option_name', 'schema_option_name_genesis', 'schema_option_name_license', '_welcome_screen_activation_redirect', 'hunch_schema_delete_transient_cache_success', 'hunch_schema_delete_transient_cache_failure');
DELETE FROM wp_options WHERE option_name LIKE 'HunchSchema-Markup-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_HunchSchemaType', '_HunchSchemaMarkup', '_HunchSchemaDisableMarkup', '_HunchSchemaEnableMarkup');
DELETE FROM wp_usermeta WHERE meta_key IN ('_HunchSchemaType', '_HunchSchemaMarkup', '_HunchSchemaDisableMarkup', '_HunchSchemaEnableMarkup');
DELETE FROM wp_termmeta WHERE meta_key IN ('_HunchSchemaType', '_HunchSchemaMarkup', '_HunchSchemaDisableMarkup', '_HunchSchemaEnableMarkup');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_HunchSchemaType', '_HunchSchemaMarkup', '_HunchSchemaDisableMarkup', '_HunchSchemaEnableMarkup');

