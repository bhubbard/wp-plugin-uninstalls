-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gNewsAnnouncementtype', 'gNewsAnnouncementorder', 'gNewsAnnouncementfont', 'gNewsAnnouncementfontsize', 'gNewsAnnouncementfontweight', 'gNewsAnnouncementfontcolor', 'gNewsAnnouncementwidth', 'gNewsAnnouncementheight', 'gNewsAnnouncementslidetimeout', 'gNewsAnnouncementslidedirection', 'gNewsAnnouncementtextalign', 'gNewsAnnouncementtextvalign', 'gNewsAnnouncementnoannouncement', 'gNews_pluginversion', 'gNewsAnnouncementtitle', 'gNewsAnnouncementnoannouncement ', '_current_nas_db_version', '_nas_activation_redirect');

