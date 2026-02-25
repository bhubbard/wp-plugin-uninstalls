<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aremc_price');
delete_site_option('aremc_price');
delete_option('aremc_down');
delete_site_option('aremc_down');
delete_option('aremc_interest');
delete_site_option('aremc_interest');
delete_option('aremc_years');
delete_site_option('aremc_years');
delete_option('aremc_txt_selling_price');
delete_site_option('aremc_txt_selling_price');
delete_option('aremc_txt_down_payment');
delete_site_option('aremc_txt_down_payment');
delete_option('aremc_txt_interest_rate');
delete_site_option('aremc_txt_interest_rate');
delete_option('aremc_txt_years');
delete_site_option('aremc_txt_years');
delete_option('aremc_txt_monthly_payment');
delete_site_option('aremc_txt_monthly_payment');
delete_option('aremc_txt_instructions');
delete_site_option('aremc_txt_instructions');
delete_option('aremc_txt_money_symbol');
delete_site_option('aremc_txt_money_symbol');

