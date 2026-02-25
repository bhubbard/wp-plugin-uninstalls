-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chanma_free_settings', 'chanma_free_tutorial_completed', 'chanma_version', 'chanma_tutorial_completed', 'chanma_settings', 'chanma_default_statuses_created', 'chanma_default_project_created', 'chanma_subscribers', 'chanma_custom_block_logo');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_chanma_version', '_chanma_release_date', '_chanma_features', '_chanma_bugfixes', '_chanma_improvements', '_chanma_security', '_chanma_removed', '_chanma_roadmap_priority', '_chanma_roadmap_deadline', '_chanma_roadmap_progress', '_chanma_roadmap_order', '_chanma_notes', '_chanma_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_chanma_version', '_chanma_release_date', '_chanma_features', '_chanma_bugfixes', '_chanma_improvements', '_chanma_security', '_chanma_removed', '_chanma_roadmap_priority', '_chanma_roadmap_deadline', '_chanma_roadmap_progress', '_chanma_roadmap_order', '_chanma_notes', '_chanma_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_chanma_version', '_chanma_release_date', '_chanma_features', '_chanma_bugfixes', '_chanma_improvements', '_chanma_security', '_chanma_removed', '_chanma_roadmap_priority', '_chanma_roadmap_deadline', '_chanma_roadmap_progress', '_chanma_roadmap_order', '_chanma_notes', '_chanma_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_chanma_version', '_chanma_release_date', '_chanma_features', '_chanma_bugfixes', '_chanma_improvements', '_chanma_security', '_chanma_removed', '_chanma_roadmap_priority', '_chanma_roadmap_deadline', '_chanma_roadmap_progress', '_chanma_roadmap_order', '_chanma_notes', '_chanma_type');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_chanma_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_chanma_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_chanma_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_chanma_%';

