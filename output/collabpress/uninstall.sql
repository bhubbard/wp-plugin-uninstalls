-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cp_options', 'cp_dismissed_messages', 'cp-options', 'cp_version', 'presstrends_cache_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cp-task-list-id', '_cp-project-id', '_cp-meta-type', '_cp-activity-action', '_cp-activity-type', '_cp-activity-author', '_cp-activity-ID', '_cp-task-assign', '_cp-task-status', '_cp-task-due', '_cp-project-users', '_cp-task-priority', '_cp-project-description', '_cp-task-list-description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cp-task-list-id', '_cp-project-id', '_cp-meta-type', '_cp-activity-action', '_cp-activity-type', '_cp-activity-author', '_cp-activity-ID', '_cp-task-assign', '_cp-task-status', '_cp-task-due', '_cp-project-users', '_cp-task-priority', '_cp-project-description', '_cp-task-list-description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cp-task-list-id', '_cp-project-id', '_cp-meta-type', '_cp-activity-action', '_cp-activity-type', '_cp-activity-author', '_cp-activity-ID', '_cp-task-assign', '_cp-task-status', '_cp-task-due', '_cp-project-users', '_cp-task-priority', '_cp-project-description', '_cp-task-list-description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cp-task-list-id', '_cp-project-id', '_cp-meta-type', '_cp-activity-action', '_cp-activity-type', '_cp-activity-author', '_cp-activity-ID', '_cp-task-assign', '_cp-task-status', '_cp-task-due', '_cp-project-users', '_cp-task-priority', '_cp-project-description', '_cp-task-list-description');

