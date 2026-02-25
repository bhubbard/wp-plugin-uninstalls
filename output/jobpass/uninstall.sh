#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jobpassIdKey'
wp option delete 'JobpassOrganisationId'
wp option delete 'JobpassSpontaneousApplication'
wp option delete 'JobpassSpontaneousDescription'
wp option delete 'JobpassAllowCredits'
wp option delete 'JobpassHeaderBackgroundColor'
wp option delete 'JobpassMainTitle'
wp option delete 'JobpassFontTitleColor'
wp option delete 'JobpassOffersData'
wp option delete 'JobpassCompanyDescription'
wp option delete 'JobpassCompanyName'
wp option delete 'JobPassHeaderBackgroundColor'
wp option delete 'JobPassSpontaneousApplication'
wp option delete 'JobPassSpontaneousDescription'
wp option delete 'JobPassOrganisationId'
wp option delete 'JobPassMainTitle'
wp option delete 'JobPassFontTitleColor'
wp option delete 'JobPassOffersData'
wp option delete 'JobPassAllowCredits'
wp option delete 'JobPassCompanyName'
wp option delete 'JobPassCompanyDescription'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jp_place'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jp_place'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jp_place'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jp_place'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jp_completeAddress'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jp_completeAddress'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jp_completeAddress'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jp_completeAddress'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jp_postalCode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jp_postalCode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jp_postalCode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jp_postalCode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jp_addressRegion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jp_addressRegion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jp_addressRegion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jp_addressRegion'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jp_startDate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jp_startDate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jp_startDate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jp_startDate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jp_validThrough'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jp_validThrough'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jp_validThrough'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jp_validThrough'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jp_contract'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jp_contract'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jp_contract'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jp_contract'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jp_remote'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jp_remote'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jp_remote'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jp_remote'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jp_salary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jp_salary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jp_salary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jp_salary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jp_experience'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jp_experience'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jp_experience'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jp_experience'"
