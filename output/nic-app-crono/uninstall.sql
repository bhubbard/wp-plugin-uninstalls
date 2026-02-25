-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nicappcrono_CreateAuthPage', 'nicappcrono_clientId');
DELETE FROM wp_options WHERE option_name LIKE '%_DataCenter';
DELETE FROM wp_options WHERE option_name LIKE '%_clientId';
DELETE FROM wp_options WHERE option_name LIKE '%_clientSecret';
DELETE FROM wp_options WHERE option_name LIKE '%_masterCalendar';
DELETE FROM wp_options WHERE option_name LIKE '%_masterAccessToken';
DELETE FROM wp_options WHERE option_name LIKE '%_masterRefreshToken';
DELETE FROM wp_options WHERE option_name LIKE '%_AuthorizationPageId';
DELETE FROM wp_options WHERE option_name LIKE '%_CreateAuthPage';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_calendarID';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_calendarID';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_calendarID';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_calendarID';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_calendarName';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_calendarName';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_calendarName';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_calendarName';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_AccessToken';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_AccessToken';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_AccessToken';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_AccessToken';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_RefreshToken';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_RefreshToken';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_RefreshToken';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_RefreshToken';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_ProfileName';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_ProfileName';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_ProfileName';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_ProfileName';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_ProfileID';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_ProfileID';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_ProfileID';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_ProfileID';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_ProviderID';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_ProviderID';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_ProviderID';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_ProviderID';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_Product_Display';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_Product_Display';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_Product_Display';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_Product_Display';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_Product_Id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_Product_Id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_Product_Id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_Product_Id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_TwoWay';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_TwoWay';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_TwoWay';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_TwoWay';

