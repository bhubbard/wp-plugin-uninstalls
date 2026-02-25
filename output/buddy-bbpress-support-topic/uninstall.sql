-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bp-bbp-st-version', '_bpbbst_welcome_screen');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bpbbpst_forum_settings', '_bpbbpst_support_recipients', '_bpbbpst_support_topic_intro', '_bpbbpst_support_topic_tpl', '_bpbbpst_support_topic', '_bpbbpst_support_referer');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bpbbpst_forum_settings', '_bpbbpst_support_recipients', '_bpbbpst_support_topic_intro', '_bpbbpst_support_topic_tpl', '_bpbbpst_support_topic', '_bpbbpst_support_referer');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bpbbpst_forum_settings', '_bpbbpst_support_recipients', '_bpbbpst_support_topic_intro', '_bpbbpst_support_topic_tpl', '_bpbbpst_support_topic', '_bpbbpst_support_referer');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bpbbpst_forum_settings', '_bpbbpst_support_recipients', '_bpbbpst_support_topic_intro', '_bpbbpst_support_topic_tpl', '_bpbbpst_support_topic', '_bpbbpst_support_referer');

