/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lmartin <lmartin@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/12/05 23:25:43 by lmartin           #+#    #+#             */
/*   Updated: 2019/12/06 21:10:45 by lmartin          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>
#include "libasm.h"

void		test_ft_strcpy()
{
	char	dst[100];

	printf("ft_strcpy :\n");
	printf("	empty_string ''");
	printf("- %s\n", ft_strcpy(dst, ""));
	printf("	toto_string 'toto'");
	printf("- %s\n", ft_strcpy(dst, "toto"));
	printf("	ten numbers '0123456789'");
	printf("- %s\n", ft_strcpy(dst, "0123456789"));
}

void		test_ft_strlen()
{
	char	*str;
	int		ret;

	printf("ft_strlen :\n");
	str = "";
	ret = ft_strlen(str);
	printf("	empty_string (0) ");
	printf("'%s'", str);
	printf(" - %d\n", ret);
	str = "    ";
	ret = ft_strlen(str);
	printf("	four spaces (4) ");
	printf("'%s'", str);
	printf(" - %d\n", ret);
	str = "0123456789";
	ret = ft_strlen(str);
	printf("	ten numbers (10) ");
	printf("'%s'", str);
	printf(" - %d\n", ret);
}

int			main(int argc, char *argv[])
{
	if (argc == 1 || !strcmp(argv[1], "ft_strlen"))
		test_ft_strlen();
	if (argc == 1 || !strcmp(argv[1], "ft_strcpy"))
		test_ft_strcpy();
}
