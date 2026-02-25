-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('udp_agent_allow_tracking', 'udp_agent_tracking_msg_last_shown_at', 'udp_installed_agents', 'udp_active_agent_basename');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ugaam-disable-ad-content');
DELETE FROM wp_usermeta WHERE meta_key IN ('ugaam-disable-ad-content');
DELETE FROM wp_termmeta WHERE meta_key IN ('ugaam-disable-ad-content');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ugaam-disable-ad-content');

