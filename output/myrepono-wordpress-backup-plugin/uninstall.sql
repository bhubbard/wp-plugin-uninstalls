-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('myrepono', 'myrepono-plugin-config', 'myrepono-plugin');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('myrepono_ignore_notice_setup');
DELETE FROM wp_usermeta WHERE meta_key IN ('myrepono_ignore_notice_setup');
DELETE FROM wp_termmeta WHERE meta_key IN ('myrepono_ignore_notice_setup');
DELETE FROM wp_commentmeta WHERE meta_key IN ('myrepono_ignore_notice_setup');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'myrepono_ignore_notice_alert_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'myrepono_ignore_notice_alert_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'myrepono_ignore_notice_alert_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'myrepono_ignore_notice_alert_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'myrepono_ignore_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'myrepono_ignore_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'myrepono_ignore_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'myrepono_ignore_notice_%';

