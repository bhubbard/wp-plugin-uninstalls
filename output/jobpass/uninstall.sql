-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jobpassIdKey', 'JobpassOrganisationId', 'JobpassSpontaneousApplication', 'JobpassSpontaneousDescription', 'JobpassAllowCredits', 'JobpassHeaderBackgroundColor', 'JobpassMainTitle', 'JobpassFontTitleColor', 'JobpassOffersData', 'JobpassCompanyDescription', 'JobpassCompanyName', 'JobPassHeaderBackgroundColor', 'JobPassSpontaneousApplication', 'JobPassSpontaneousDescription', 'JobPassOrganisationId', 'JobPassMainTitle', 'JobPassFontTitleColor', 'JobPassOffersData', 'JobPassAllowCredits', 'JobPassCompanyName', 'JobPassCompanyDescription');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('jp_place', 'jp_completeAddress', 'jp_postalCode', 'jp_addressRegion', 'jp_startDate', 'jp_validThrough', 'jp_contract', 'jp_remote', 'jp_salary', 'jp_experience');
DELETE FROM wp_usermeta WHERE meta_key IN ('jp_place', 'jp_completeAddress', 'jp_postalCode', 'jp_addressRegion', 'jp_startDate', 'jp_validThrough', 'jp_contract', 'jp_remote', 'jp_salary', 'jp_experience');
DELETE FROM wp_termmeta WHERE meta_key IN ('jp_place', 'jp_completeAddress', 'jp_postalCode', 'jp_addressRegion', 'jp_startDate', 'jp_validThrough', 'jp_contract', 'jp_remote', 'jp_salary', 'jp_experience');
DELETE FROM wp_commentmeta WHERE meta_key IN ('jp_place', 'jp_completeAddress', 'jp_postalCode', 'jp_addressRegion', 'jp_startDate', 'jp_validThrough', 'jp_contract', 'jp_remote', 'jp_salary', 'jp_experience');

