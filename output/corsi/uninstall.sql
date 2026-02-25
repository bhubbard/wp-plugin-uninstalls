-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('recently_activated', 'corsi_facebook', 'corsi_youtube', 'corsi_twitter', 'corsi_agoogleplus', 'corsi_smtphost', 'corsi_smtpuser', 'corsi_smtppassword', 'corsi_googleplus');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tgmpa_dismissed_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('tgmpa_dismissed_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('tgmpa_dismissed_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tgmpa_dismissed_notice');

