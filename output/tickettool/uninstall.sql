-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_ticketool_blank', 'wp_ticketool_expired', 'wp_ticketool_key', 'wp_ticketool_thumbnail', 'wp_ticketool_thumbnail_width', 'wp_ticketool_iframe', 'wp_ticketool_iframe_width', 'wp_ticketool_iframe_height', 'wp_ticketool_map', 'wp_ticketool_map_width', 'wp_ticketool_map_height', 'wp_ticketool_cat', 'wp_ticketool_button_title', 'wp_ticketool_lang');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tickettool_event_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('tickettool_event_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('tickettool_event_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tickettool_event_id');

