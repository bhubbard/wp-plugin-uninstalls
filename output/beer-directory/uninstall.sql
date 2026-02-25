-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('beer_abv', 'beer_ibu', 'beer_og', 'beer_fg', 'beer_color', 'beer_grains', 'beer_yeast', 'beer_hops', 'beer_avail');
DELETE FROM wp_usermeta WHERE meta_key IN ('beer_abv', 'beer_ibu', 'beer_og', 'beer_fg', 'beer_color', 'beer_grains', 'beer_yeast', 'beer_hops', 'beer_avail');
DELETE FROM wp_termmeta WHERE meta_key IN ('beer_abv', 'beer_ibu', 'beer_og', 'beer_fg', 'beer_color', 'beer_grains', 'beer_yeast', 'beer_hops', 'beer_avail');
DELETE FROM wp_commentmeta WHERE meta_key IN ('beer_abv', 'beer_ibu', 'beer_og', 'beer_fg', 'beer_color', 'beer_grains', 'beer_yeast', 'beer_hops', 'beer_avail');

