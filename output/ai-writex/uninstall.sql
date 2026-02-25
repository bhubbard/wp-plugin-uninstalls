-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('writex_ai_save_settings', 'ai_writeX_plugin_data', 'ai_writex_errors');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_smartcontent_generated', '_smartcontent_tone', '_smartcontent_length', '_smartcontent_replace');
DELETE FROM wp_usermeta WHERE meta_key IN ('_smartcontent_generated', '_smartcontent_tone', '_smartcontent_length', '_smartcontent_replace');
DELETE FROM wp_termmeta WHERE meta_key IN ('_smartcontent_generated', '_smartcontent_tone', '_smartcontent_length', '_smartcontent_replace');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_smartcontent_generated', '_smartcontent_tone', '_smartcontent_length', '_smartcontent_replace');

