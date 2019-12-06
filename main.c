/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lmartin <lmartin@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/12/05 23:25:43 by lmartin           #+#    #+#             */
/*   Updated: 2019/12/06 19:37:36 by lmartin          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>
#include "libasm.h"

void		test_ft_strcpy()
{
	char	*src;
	char	*dst;

	printf("ft_strcpy :\n");
	dst = "";
	src = "";
	printf("	empty_string ");
	printf("'%s'", src);
	dst = ft_strcpy(dst, src);
	printf("- %s\n", dst);
	src = "toto";
	printf("	toto_string ");
	printf("'%s'", src);
	dst = ft_strcpy(dst, src);
	printf("- %s\n", dst);
	src = "0123456789";
	printf("	ten numbers ");
	printf("'%s'", src);
	dst = ft_strcpy(dst, src);
	printf("- %s\n", dst);
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
