-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_wcv_timeout_limit', '_wcv_position', '_wcv_icon', '_wcv_weight_block', '_wcv_message', '_wcv_message_one', '_wcv_use_js', '_wcvisitor_after_price', '_wcvisitor_only_one_hide', '_wcv_fake_mode', '_wcv_fake_mode_from', '_wcv_fake_mode_to', '_wcv_live_mode', '_wcv_fontawesome', '_wcv_live_seconds', 'counter-visitor-newsletter', '_WCVisitor_folder_name');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wcvisitor_version');
DELETE FROM wp_usermeta WHERE meta_key IN ('wcvisitor_version');
DELETE FROM wp_termmeta WHERE meta_key IN ('wcvisitor_version');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wcvisitor_version');

