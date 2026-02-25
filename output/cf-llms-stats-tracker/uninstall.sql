-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('llmssttr_retention_days', 'llmssttr_cached_content', 'llmssttr_last_updated', 'llmssttr_owner_name', 'llmssttr_owner_email', 'llmssttr_owner_website', 'llmssttr_policy_url', 'llmssttr_include_post_types');

