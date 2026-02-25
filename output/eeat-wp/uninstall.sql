-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_eeatwpcp_citations_limit', 'eeatwpcp_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_eeatwpcp_citations', 'eeatwpcp_description', 'eeatwpcp_alumni_of', 'eeatwpcp_employer', 'eeatwpcp_job_title', 'eeatwpcp_knows_about', 'eeatwpcp_website', 'eeatwpcp_facebook', 'eeatwpcp_twitter', 'eeatwpcp_linkedin', '_eeatwpcp_co_authors', '_eeatwpcp_review_by');
DELETE FROM wp_usermeta WHERE meta_key IN ('_eeatwpcp_citations', 'eeatwpcp_description', 'eeatwpcp_alumni_of', 'eeatwpcp_employer', 'eeatwpcp_job_title', 'eeatwpcp_knows_about', 'eeatwpcp_website', 'eeatwpcp_facebook', 'eeatwpcp_twitter', 'eeatwpcp_linkedin', '_eeatwpcp_co_authors', '_eeatwpcp_review_by');
DELETE FROM wp_termmeta WHERE meta_key IN ('_eeatwpcp_citations', 'eeatwpcp_description', 'eeatwpcp_alumni_of', 'eeatwpcp_employer', 'eeatwpcp_job_title', 'eeatwpcp_knows_about', 'eeatwpcp_website', 'eeatwpcp_facebook', 'eeatwpcp_twitter', 'eeatwpcp_linkedin', '_eeatwpcp_co_authors', '_eeatwpcp_review_by');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_eeatwpcp_citations', 'eeatwpcp_description', 'eeatwpcp_alumni_of', 'eeatwpcp_employer', 'eeatwpcp_job_title', 'eeatwpcp_knows_about', 'eeatwpcp_website', 'eeatwpcp_facebook', 'eeatwpcp_twitter', 'eeatwpcp_linkedin', '_eeatwpcp_co_authors', '_eeatwpcp_review_by');

