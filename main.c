/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lmartin <lmartin@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/12/05 23:25:43 by lmartin           #+#    #+#             */
/*   Updated: 2019/12/06 21:24:23 by lmartin          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>
#include "libasm.h"

void		test_ft_strcmp()
{
	printf("ft_strcmp :\n");
	printf("	[1] - empty_string '' ''");
	printf("- %d\n", ft_strcmp("", ""));
	printf("	[2] 'toto' 'toto'");
	printf("- %d\n", ft_strcmp("toto", "toto"));
	printf("	[3]  'toto' ''");
	printf("- %d\n", ft_strcmp("toto", ""));
	printf("	[4]  '' 'toto'");
	printf("- %d\n", ft_strcmp("", "toto"));
	printf("	[5]  'tototest' 'toto'");
	printf("- %d\n", ft_strcmp("tototest", "toto"));
	printf("	[6]  'bbbonjour' 'bbonjour'");
	printf("- %d\n", ft_strcmp("bbbonjour", "bbonjour"));
	printf("	[7]  'NULL' 'bbonjour'");
	printf("- %d\n", ft_strcmp(NULL, "bbonjour"));
	printf("	[7]  'NULL' 'NULL'");
	printf("- %d\n", ft_strcmp(NULL, NULL));
	printf("	[8]  '' 'NULL'");
	printf("- %d\n", ft_strcmp("", NULL));
}

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
	if (argc == 1 || !strcmp(argv[1], "ft_strcmp"))
		test_ft_strcmp();
}
