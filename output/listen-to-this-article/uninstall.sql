-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('himoose_api_key', 'himoose_domain', 'himoose_auto_insert', 'himoose_generation_defaults');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('himoose_successful_assignments_count', 'himoose_review_prompt_dismissed', '_himoose_embed_html', '_himoose_job_id', '_himoose_podcast_label');
DELETE FROM wp_usermeta WHERE meta_key IN ('himoose_successful_assignments_count', 'himoose_review_prompt_dismissed', '_himoose_embed_html', '_himoose_job_id', '_himoose_podcast_label');
DELETE FROM wp_termmeta WHERE meta_key IN ('himoose_successful_assignments_count', 'himoose_review_prompt_dismissed', '_himoose_embed_html', '_himoose_job_id', '_himoose_podcast_label');
DELETE FROM wp_commentmeta WHERE meta_key IN ('himoose_successful_assignments_count', 'himoose_review_prompt_dismissed', '_himoose_embed_html', '_himoose_job_id', '_himoose_podcast_label');

