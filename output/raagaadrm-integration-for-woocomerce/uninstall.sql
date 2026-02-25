-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('raagaa_drm_org_secret', 'raagaa_drm_org_email ', 'raagaa_drm_org_email');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_use_raagaa_drm', '_rg_prod_id', '_use_raagaa_drm_title', '_rg_company_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_use_raagaa_drm', '_rg_prod_id', '_use_raagaa_drm_title', '_rg_company_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_use_raagaa_drm', '_rg_prod_id', '_use_raagaa_drm_title', '_rg_company_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_use_raagaa_drm', '_rg_prod_id', '_use_raagaa_drm_title', '_rg_company_id');

