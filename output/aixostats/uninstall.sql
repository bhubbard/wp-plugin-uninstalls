-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aixostats_banned_ip', 'aixostats_banned_ip_activer', 'aixostats_ban_admins_activer', 'aixostats_auto_tag_commentators', 'aixostats_google_activer', 'aixostats_google_id', 'aixostats_woopra_activer', 'aixostats_woopra_id', 'aixostats_reinvigorate_activer', 'aixostats_reinvigorate_id', 'aixostats_sitemeter_activer', 'aixostats_sitemeter_id1', 'aixostats_sitemeter_id2', 'aixostats_clicky_activer', 'aixostats_clicky_id');

