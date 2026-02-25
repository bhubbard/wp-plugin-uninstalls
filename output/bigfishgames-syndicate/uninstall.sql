-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bigfishgames_syndicate_interval', 'bigfishgames_syndicate_wh_checked', 'bigfishgames_syndicate_last_posts', 'bigfishgames_syndicate_aff_code', 'bigfishgames_syndicate_template', 'bigfishgames_syndicate_title_prefix', 'bigfishgames_syndicate_title_suffix', 'bigfishgames_syndicate_pc_en', 'bigfishgames_syndicate_pc_de', 'bigfishgames_syndicate_pc_fr', 'bigfishgames_syndicate_pc_es', 'bigfishgames_syndicate_mac_en', 'bigfishgames_syndicate_allow_pings', 'bigfishgames_syndicate_allow_comments');

