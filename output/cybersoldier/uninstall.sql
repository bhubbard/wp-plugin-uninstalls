-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('number_of_lines', 'cybersoldier_send_mail_to_opponent', 'cybersoldier_time_to_end', 'cybersoldier_number_of_lines', 'cybersoldier_url_to_infopage', 'cybersoldier_refresh_page_for_opponent', 'cybersoldier_admin_is_player');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('invited_user', 'cybersoldierbody_color', 'description');
DELETE FROM wp_usermeta WHERE meta_key IN ('invited_user', 'cybersoldierbody_color', 'description');
DELETE FROM wp_termmeta WHERE meta_key IN ('invited_user', 'cybersoldierbody_color', 'description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('invited_user', 'cybersoldierbody_color', 'description');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_color';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_color';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_color';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_color';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'cybersoldier%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'cybersoldier%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'cybersoldier%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cybersoldier%';

