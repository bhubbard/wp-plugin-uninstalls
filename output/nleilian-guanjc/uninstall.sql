-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tag_manage_key', 'tagmanage_wzt_token1', 'tagmanage_wzt_token2', 'tagmanage_wzt_token3', 'tagmanage_tongchang', 'tagmanage_tongji', 'tagmanage_clear', 'tagmanage_level', 'tagmanage_tag', 'Tag_manage_key', 'tagmanage_zz', 'Tag_manage_link', 'tagmanage_auth_fail_count', 'tagmanage_auth_last_fail_time');

