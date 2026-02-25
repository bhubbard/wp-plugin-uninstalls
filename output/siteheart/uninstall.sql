-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sh_widget_id', 'sh_template', 'sh_side', 'sh_position', 'sh_title', 'sh_title_offline', 'sh_inviteTimeout', 'sh_inviteCancelTimeout', 'sh_inviteText', 'sh_inviteImage', 'sh_text_layout', 'sh_devisions', 'sh_track', 'sh_hide', 'sh_hide_offline', 'sh_offline_pay', 'sh_secret_key');

