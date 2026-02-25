-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aremc_price', 'aremc_down', 'aremc_interest', 'aremc_years', 'aremc_txt_selling_price', 'aremc_txt_down_payment', 'aremc_txt_interest_rate', 'aremc_txt_years', 'aremc_txt_monthly_payment', 'aremc_txt_instructions', 'aremc_txt_money_symbol');

