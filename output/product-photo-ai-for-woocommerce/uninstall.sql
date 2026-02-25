-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_photoai_job_ids', '_photoai_generated_images', '_photoai_processed_jobs', '_photoai_job_attachments', '_photoai_generated_image_ids', '_photoai_bulk_queued');
DELETE FROM wp_usermeta WHERE meta_key IN ('_photoai_job_ids', '_photoai_generated_images', '_photoai_processed_jobs', '_photoai_job_attachments', '_photoai_generated_image_ids', '_photoai_bulk_queued');
DELETE FROM wp_termmeta WHERE meta_key IN ('_photoai_job_ids', '_photoai_generated_images', '_photoai_processed_jobs', '_photoai_job_attachments', '_photoai_generated_image_ids', '_photoai_bulk_queued');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_photoai_job_ids', '_photoai_generated_images', '_photoai_processed_jobs', '_photoai_job_attachments', '_photoai_generated_image_ids', '_photoai_bulk_queued');

