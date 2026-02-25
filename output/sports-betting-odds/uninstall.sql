-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sports', 'oddsAffiliatUrl', 'firstTeamName', 'firstH2H', 'firstSpreadPrice', 'firstSpreadPoint', 'firstTotalPrice', 'firstTotalPoint', 'secondTeamName', 'secondH2H', 'secondSpreadPrice', 'secondSpreadPoint', 'secondTotalPrice', 'secondTotalPoint');
DELETE FROM wp_usermeta WHERE meta_key IN ('sports', 'oddsAffiliatUrl', 'firstTeamName', 'firstH2H', 'firstSpreadPrice', 'firstSpreadPoint', 'firstTotalPrice', 'firstTotalPoint', 'secondTeamName', 'secondH2H', 'secondSpreadPrice', 'secondSpreadPoint', 'secondTotalPrice', 'secondTotalPoint');
DELETE FROM wp_termmeta WHERE meta_key IN ('sports', 'oddsAffiliatUrl', 'firstTeamName', 'firstH2H', 'firstSpreadPrice', 'firstSpreadPoint', 'firstTotalPrice', 'firstTotalPoint', 'secondTeamName', 'secondH2H', 'secondSpreadPrice', 'secondSpreadPoint', 'secondTotalPrice', 'secondTotalPoint');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sports', 'oddsAffiliatUrl', 'firstTeamName', 'firstH2H', 'firstSpreadPrice', 'firstSpreadPoint', 'firstTotalPrice', 'firstTotalPoint', 'secondTeamName', 'secondH2H', 'secondSpreadPrice', 'secondSpreadPoint', 'secondTotalPrice', 'secondTotalPoint');

