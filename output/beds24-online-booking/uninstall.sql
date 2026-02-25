-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('beds24_ownerid', 'beds24_propid', 'beds24_roomid', 'beds24_numdisplayed', 'beds24_hidecalendar', 'beds24_hideheader', 'beds24_hidefooter', 'beds24_referer', 'beds24_domain', 'beds24_advancedays', 'beds24_numnight', 'beds24_numadult', 'beds24_numchild', 'beds24_layout', 'beds24_width', 'beds24_height', 'beds24_target', 'beds24_custom', 'beds24_color', 'beds24_padding', 'beds24_bgcolor');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ownerid', 'propid', 'roomid', 'lang', 'referer', 'domain', 'scrolltop');
DELETE FROM wp_usermeta WHERE meta_key IN ('ownerid', 'propid', 'roomid', 'lang', 'referer', 'domain', 'scrolltop');
DELETE FROM wp_termmeta WHERE meta_key IN ('ownerid', 'propid', 'roomid', 'lang', 'referer', 'domain', 'scrolltop');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ownerid', 'propid', 'roomid', 'lang', 'referer', 'domain', 'scrolltop');

