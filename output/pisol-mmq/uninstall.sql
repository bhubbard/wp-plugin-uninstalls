-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pi_mmq_do_activation_redirect', 'pisol_mmq_category_rules', 'pi_mmq_min_quantity_enabled', 'pi_mmq_max_quantity_enabled', 'pi_mmq_min_exclude_product', 'pi_mmq_min_amount_enabled', 'pi_mmq_min_amount_0', 'pi_mmq_min_amount_more_then_min_equal_to_min', 'pi_mmq_enable_circular_progress', 'pi_mmq_minimum_amount_position', 'pi_mmq_minimum_amount_background_color', 'pi_mmq_minimum_amount_font_color', 'pi_mmq_minimum_amount_close_color', 'pi_mmq_minimum_amount_font_weight', 'pi_mmq_minimum_amount_close_weight', 'pi_mmq_minimum_amount_font_size', 'pi_mmq_minimum_amount_close_size', 'pi_mmq_min_amount_bar_display', 'pi_mmq_min_amount', 'pi_mmq_product_loop_position', 'pi_mmq_max_0', 'pi_mmq_max_more_then_0_less_then_max', 'pi_mmq_max_equal_to_max', 'pi_mmq_min_0', 'pi_mmq_min_more_then_0_less_then_min', 'pi_mmq_min_more_then_min_equal_to_min', 'pi_mmq_min_max_0', 'pi_mmq_min_max_more_then_0_less_then_min', 'pi_mmq_min_max_more_then_min_less_then_max', 'pi_mmq_min_max_equal_to_max', 'pi_mmq_min_quantity', 'pi_mmq_max_quantity');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pisol_mmq_disable_global_min_max');
DELETE FROM wp_usermeta WHERE meta_key IN ('pisol_mmq_disable_global_min_max');
DELETE FROM wp_termmeta WHERE meta_key IN ('pisol_mmq_disable_global_min_max');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pisol_mmq_disable_global_min_max');

