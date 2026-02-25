-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mbwp_heartbeat', 'mbwp_shortlink', 'mbwp_pingback', 'mbwp_xml_rpc', 'mbwp_remove_qurey_string', 'mbwp_hide_wp', 'mbwp_dns_prefetch', 'mbwp_contact_form', 'mbwp_mbeds', 'mbwp_WLManifest', 'mbwp_Remove_JQuery', 'mbwp_dashicons', 'mbwp_remove_url_comment', 'mbwp_disable_acf', 'mbwp_search', 'mbwp_preload_fonts');

