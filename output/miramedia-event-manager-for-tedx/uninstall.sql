-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('company_name', 'job_title', 'email_address', 'social_links', 'youtube_link', 'person_link', 'website_address', 'industry_type', 'company_email', 'telephone_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('company_name', 'job_title', 'email_address', 'social_links', 'youtube_link', 'person_link', 'website_address', 'industry_type', 'company_email', 'telephone_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('company_name', 'job_title', 'email_address', 'social_links', 'youtube_link', 'person_link', 'website_address', 'industry_type', 'company_email', 'telephone_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('company_name', 'job_title', 'email_address', 'social_links', 'youtube_link', 'person_link', 'website_address', 'industry_type', 'company_email', 'telephone_number');

