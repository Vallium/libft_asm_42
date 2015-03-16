/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ide-vill <iris.devillars@gmail.com>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/06 16:42:20 by ide-vill          #+#    #+#             */
/*   Updated: 2015/03/14 15:14:01 by ide-vill         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "includes/libfts.h"


#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>


/* PART 1 */

void		check_bzero(void)
{
	char	str[4] = "jui";

	printf("[------] FT_BZERO [------]\n");
	printf("[+] str[0] = %d = %c [+]\n", str[0], str[0]);
	printf("[+] str[1] = %d = %c [+]\n", str[1], str[1]);
	printf("[+] str[2] = %d = %c [+]\n", str[2], str[2]);
	printf("[-] FT_BZERO DONE [-]\n");
	ft_bzero(str, 3);
	printf("[+] str[0] = %d = %c [+]\n", str[0], str[0]);
	printf("[+] str[1] = %d = %c [+]\n", str[1], str[1]);
	printf("[+] str[2] = %d = %c [+]\n", str[2], str[2]);
	printf("[-] Test with NULL [-]\n");
	ft_bzero(NULL, 0);
	printf("[------] END OF FT_BZERO [------]\n");
}

void		check_strcat(void)
{
	char		str[7];

	str[0] = '\0';
	bzero(str, 7);
	printf("[------] FT_STRCAT [------]\n");
	printf("[+] Str init with empy char : %s [+]\n", ft_strcat(str, ""));
	printf("[+] Str: %s [+]\n", ft_strcat(str, "h"));
	printf("[+] Str: %s [+]\n", ft_strcat(str, "ello"));
	printf("[+] Str: %s [+]\n", ft_strcat(str, "!"));
	printf("[------] END OF FT_STRCAT [------]\n");
}

void		check_alpha(void)
{
	printf("[------] FT_ISALPHA [------]\n");
	printf("[+] Test on %c, return = %d [+]\n", 'a', ft_isalpha('a'));
	printf("[+] Test on %c, return = %d [+]\n", 'z', ft_isalpha('z'));
	printf("[+] Test on %c, return = %d [+]\n", '*', ft_isalpha('*'));
	printf("[+] Test on %c, return = %d [+]\n", 'Z', ft_isalpha('Z'));
	printf("[+] Test on %c, return = %d [+]\n", 'A', ft_isalpha('A'));
	printf("[+] Test on %c, return = %d [+]\n", '0', ft_isalpha('0'));
	printf("[+] Test on %c, return = %d [+]\n", '9', ft_isalpha('9'));
	printf("[+] Test on %c, return = %d [+]\n", '4', ft_isalpha('4'));
	printf("[-] Test with NULL [-]\n");
	printf("[+] Test return = %d [+]\n", ft_isalpha(0));
	printf("[------] END OF FT_ISALPHA [------]\n");
}

void		check_digit(void)
{
	printf("[------] FT_ISDIGIT [------]\n");
	printf("[+] Test on %c, return = %d [+]\n", 'a', ft_isdigit('a'));
	printf("[+] Test on %c, return = %d [+]\n", 'z', ft_isdigit('z'));
	printf("[+] Test on %c, return = %d [+]\n", '*', ft_isdigit('*'));
	printf("[+] Test on %c, return = %d [+]\n", 'Z', ft_isdigit('Z'));
	printf("[+] Test on %c, return = %d [+]\n", 'A', ft_isdigit('A'));
	printf("[+] Test on %c, return = %d [+]\n", '0', ft_isdigit('0'));
	printf("[+] Test on %c, return = %d [+]\n", '9', ft_isdigit('9'));
	printf("[+] Test on %c, return = %d [+]\n", '4', ft_isdigit('4'));
	printf("[-] Test with NULL [-]\n");
	printf("[+] Test return = %d [+]\n", ft_isdigit(0));
	printf("[------] END OF FT_ISDIGIT [------]\n");
}

void		check_alnum(void)
{
	printf("[------] FT_ISALNUM [------]\n");
	printf("[+] Test on %c, return = %d [+]\n", 'a', ft_isalnum('a'));
	printf("[+] Test on %c, return = %d [+]\n", 'z', ft_isalnum('z'));
	printf("[+] Test on %c, return = %d [+]\n", '*', ft_isalnum('*'));
	printf("[+] Test on %c, return = %d [+]\n", 'Z', ft_isalnum('Z'));
	printf("[+] Test on %c, return = %d [+]\n", 'A', ft_isalnum('A'));
	printf("[+] Test on %c, return = %d [+]\n", '0', ft_isalnum('0'));
	printf("[+] Test on %c, return = %d [+]\n", '9', ft_isalnum('9'));
	printf("[+] Test on %c, return = %d [+]\n", '4', ft_isalnum('4'));
	printf("[-] Test with NULL [-]\n");
	printf("[+] Test return = %d [+]\n", ft_isalnum(0));
	printf("[------] END OF FT_ISALNUM [-------]\n");
}

void		check_isascii(void)
{
	printf("[------] FT_ISASCII [------]\n");
	printf("[+] Test on %c : %d, return = %d [+]\n", 'a', 'a', ft_isascii('a'));
	printf("[+] Test on %c : %d, return = %d [+]\n", 'z', 'z', ft_isascii('z'));
	printf("[+] Test on %c : %d, return = %d [+]\n", 'A', 'A', ft_isascii('A'));
	printf("[+] Test on %c : %d, return = %d [+]\n", 'Z', 'Z', ft_isascii('Z'));
	printf("[+] Test on %c : %d, return = %d [+]\n", 245, 245, ft_isascii(245));
	printf("[+] Test on %c : %d, return = %d [+]\n", 221, 221, ft_isascii(221));
	printf("[-] Test with NULL [-]\n");
	printf("[+] Test return = %d [+]\n", ft_isascii(0));
	printf("[------] END OF FT_ISASCII [------]\n");
}

void		check_isprint(void)
{
	printf("[------] FT_ISPRINT [------]\n");
	printf("[+] Test on %c : %d, return = %d [+]\n", 'a', 'a', ft_isprint('a'));
	printf("[+] Test on %c : %d, return = %d [+]\n", 'z', 'z', ft_isprint('z'));
	printf("[+] Test on %c : %d, return = %d [+]\n", 'A', 'A', ft_isprint('A'));
	printf("[+] Test on %c : %d, return = %d [+]\n", 'Z', 'Z', ft_isprint('Z'));
	printf("[+] Test on %c : %d, return = %d [+]\n", 245, 245, ft_isprint(245));
	printf("[+] Test on %c : %d, return = %d [+]\n", 221, 221, ft_isprint(221));
	printf("[+] Test on %c : %d, return = %d [+]\n", ' ', ' ', ft_isprint(' '));
	printf("[+] Test on %c : %d, return = %d [+]\n", '+', '+', ft_isprint('+'));
	printf("[+] Test on %c : %d, return = %d [+]\n", ')', ')', ft_isprint(')'));
	printf("[+] Test on %c : %d, return = %d [+]\n", '>', '>', ft_isprint('>'));
	printf("[+] Test on %c : %d, return = %d [+]\n", '\\', '\\', ft_isprint('\\'));
	printf("[-] Test with NULL [-]\n");
	printf("[+] Test return = %d [+]\n", ft_isprint(0));
	printf("[------] END OF FT_ISPRINT [------]\n");
}

void		check_toupper(void)
{
	printf("[------] FT_TOUPPER [------]\n");
	printf("[+] Test on %c, return = %c [+]\n", 'a', ft_toupper('a'));
	printf("[+] Test on %c, return = %c [+]\n", 'z', ft_toupper('z'));
	printf("[+] Test on %c, return = %c [+]\n", '*', ft_toupper('*'));
	printf("[+] Test on %c, return = %c [+]\n", 'Z', ft_toupper('Z'));
	printf("[+] Test on %c, return = %c [+]\n", 'A', ft_toupper('A'));
	printf("[+] Test on %c, return = %c [+]\n", '0', ft_toupper('0'));
	printf("[+] Test on %c, return = %c [+]\n", '9', ft_toupper('9'));
	printf("[+] Test on %c, return = %c [+]\n", '4', ft_toupper('4'));
	printf("[-] Test with NULL [-]\n");
	printf("[+] Test return = %c [+]\n", ft_toupper(0));
	printf("[------] END OF FT_TOUPPER [------]\n");
}

void		check_tolower(void)
{
	printf("[------] FT_TOLOWER [------]\n");
	printf("[+] Test on %c, return = %c [+]\n", 'a', ft_tolower('a'));
	printf("[+] Test on %c, return = %c [+]\n", 'z', ft_tolower('z'));
	printf("[+] Test on %c, return = %c [+]\n", '*', ft_tolower('*'));
	printf("[+] Test on %c, return = %c [+]\n", 'Z', ft_tolower('Z'));
	printf("[+] Test on %c, return = %c [+]\n", 'A', ft_tolower('A'));
	printf("[+] Test on %c, return = %c [+]\n", '0', ft_tolower('0'));
	printf("[+] Test on %c, return = %c [+]\n", '9', ft_tolower('9'));
	printf("[+] Test on %c, return = %c [+]\n", '4', ft_tolower('4'));
	printf("[-] Test with NULL [-]\n");
	printf("[+] Test return = %c [+]\n", ft_tolower(0));
	printf("[------] END OF FT_TOLOWER [------]\n");
}

void		check_puts(void)
{
	printf("[------] FT_PUTS [------]\n");
	ft_puts("[+] a [+]");
	ft_puts("[+] $#@#',./,~!@~=+ [+]");
	printf("[-] Test with null [-]\n");
	ft_puts(NULL);
	printf("[------] END OF FT_PUTS [------]\n");
}


/* PART 2 */


void		check_strlen(void)
{
	char	str[5] = "abcd";
	char	str2[3] = "op";

	printf("[------] FT_STRLEN [------]\n");
	printf("[+] %s, sized: %d [+]\n", str, (int)ft_strlen(str));
	printf("[+] %s, sized: %d [+]\n", str2, (int)ft_strlen(str2));

	printf("[+] Test with NULL [+]\n");
	printf("[+] sized: %d [+]\n", (int)ft_strlen(0));
	printf("[------] END OF FT_STRLEN [------]\n");
}

void		check_memset(void)
{
	printf("[------] FT_MEMSET [------]\n");
	printf("[+] Before memset: %s [+]\n", "abcd");
	printf("[+] After memset: %s [+]\n", (char*)ft_memset(ft_strdup("abcd"), 'A', 3));
	printf("[------] END OF FT_MEMSET [------]\n");
}

void		check_memcpy(void)
{
	char		str[2];
	char		str2[6];

	ft_bzero(str, 2);
	ft_bzero(str2, 6);

	printf("[------] FT_MEMCPY [------]\n");
	printf("[+] Str1 size: %d, Content: %s [+]\n", (int)ft_strlen(str), str);
	printf("[+] Str2 size: %d, Content: %s [+]\n", (int)ft_strlen(str2), str2);
	ft_memcpy((void*)str, (void*)"a", 1);
	ft_memcpy((void*)str2, (void*)"hello", 5);
	printf("[-] Using ft_memcpy [-]\n");
	printf("[+] Str1 size: %d, Content: %s [+]\n", (int)ft_strlen(str), str);
	printf("[+] Str2 size: %d, Content: %s [+]\n", (int)ft_strlen(str2), str2);
	printf("[------] END OF MEMCPY [------]\n");
}

void		check_strdup(void)
{
	char		*str;
	char		f[] = "h";
	char		s[] = "hello";
	char		t[] = "";

	printf("[-------] FT_STRDUP [------]\n");
	printf("[+] Str init [+]\n");
	str = ft_strdup(f);
	printf("[+] Str after strdup (\"%s\") %d [+]\n", str, (int)ft_strlen(str));
	str = ft_strdup(s);
	printf("[+] Str after strdup (\"%s\") %d [+]\n", str, (int)ft_strlen(str));
	str = ft_strdup(t);
	printf("[+] Str after strdup (\"%s\") %d [+]\n", str, (int)ft_strlen(str));
	printf("[------] END OF STRDUP [------]\n");
}

/* PART 3 */


void		check_cat(void)
{
	int		fd;

	fd = open("Makefile", O_RDONLY);
	printf("[------] FT_CAT [------]\n");
	printf("[------] Press Ctrl + D to Continue [------] \n");
	ft_cat(0); // Ctrl + D to Continue !
	ft_cat(open(__FILE__, O_RDONLY));
	ft_cat(fd);
	ft_cat(-42);
	printf("[------] END OF FT_CAT [------]\n");
	close(fd);
}

// /* BONUS */
//
void		check_isspace(void)
{
	printf("[------] FT_ISSPACE [------]\n");
	printf("[+] Test on %c, return = %d [+]\n", 'a', ft_isspace('a'));
	printf("[+] Test on %c, return = %d [+]\n", 'Z', ft_isspace('Z'));
	printf("[+] Test on %c, return = %d [+]\n", '*', ft_isspace('*'));
	printf("[+] Test on %c, return = %d [+]\n", ' ', ft_isspace(' '));
	printf("[+] Test on \\n, return = %d [+]\n", ft_isspace('\n'));
	printf("[+] Test on \\t, return = %d [+]\n", ft_isspace('\t'));
	printf("[+] Test on \\v, return = %d [+]\n", ft_isspace('\v'));
	printf("[+] Test on \\f, return = %d [+]\n", ft_isspace('\f'));
	printf("[+] Test on \\r, return = %d [+]\n", ft_isspace('\r'));
	printf("[-] Test with NULL [-]\n");
	printf("[+] Test return = %d [+]\n", ft_isspace(0));
	printf("[------] END OF FT_ISSPACE [------]\n");
}
//
// void		check_abs(void)
// {
// 	printf("[------] FT_ABS [-------]\n");
// 	printf("[+] Test on %d, return = %d [+]\n", 0, ft_abs(0));
// 	printf("[+] Test on %d, return = %d [+]\n", 1, ft_abs(1));
// 	printf("[+] Test on %d, return = %d [+]\n", 10, ft_abs(10));
// 	printf("[+] Test on %d, return = %d [+]\n", -1, ft_abs(-1));
// 	printf("[+] Test on %d, return = %d [+]\n", -5, ft_abs(-5));
// 	printf("[+] Test on %d, return = %d [+]\n", -20, ft_abs(-20));
// 	printf("[-] Test with NULL [-]\n");
// 	printf("[+] Test return = %d [+]\n", ft_abs(0));
// 	printf("[------] END OF FT_ABS [------]\n");
// }
//
// void		check_max(void)
// {
// 	printf("[------] FT_MAX [------]\n");
// 	printf("[+] Test on [1, 2], return = %d [+]\n", ft_max(1, 2));
// 	printf("[+] Test on [-3, 0], return = %d [+]\n", ft_max(-3, 0));
// 	printf("[+] Test on [-15, -30], return = %d [+]\n", ft_max(-15, -30));
// 	printf("[+] Test on [-5, -5], return = %d [+]\n", ft_max(-5, -5));
// 	printf("[-] Test with NULL [-]\n");
// 	printf("[+] Test return = %d [+]\n", ft_max(0, 0));
// 	printf("[------] END OF FT_MAX [------]\n");
// }
//
// void		check_min(void)
// {
// 	printf("[------] FT_MIN [------]\n");
// 	printf("[+] Test on [1, 2], return = %d [+]\n", ft_min(1, 2));
// 	printf("[+] Test on [-3, 3], return = %d [+]\n", ft_min(-3, 3));
// 	printf("[+] Test on [-15, -30], return = %d [+]\n", ft_min(-30, -15));
// 	printf("[+] Test on [-5, -5], return = %d [+]\n", ft_min(-5, -5));
// 	printf("[-] Test with NULL [-]\n");
// 	printf("[+] Test return = %d [+]\n", ft_min(0, 0));
// 	printf("[------] END OF FT_MIN [------]\n");
// }
//
// void		check_isupper(void)
// {
// 	printf("[------] FT_ISUPPER [------]\n");
// 	printf("[+] Test on %c, return = %d [+]\n", 'a', ft_isupper('a'));
// 	printf("[+] Test on %c, return = %d [+]\n", 'z', ft_isupper('z'));
// 	printf("[+] Test on %c, return = %d [+]\n", '*', ft_isupper('*'));
// 	printf("[+] Test on %c, return = %d [+]\n", 'Z', ft_isupper('Z'));
// 	printf("[+] Test on %c, return = %d [+]\n", 'A', ft_isupper('A'));
// 	printf("[+] Test on %c, return = %d [+]\n", '0', ft_isupper('0'));
// 	printf("[+] Test on %c, return = %d [+]\n", '9', ft_isupper('9'));
// 	printf("[+] Test on %c, return = %d [+]\n", '4', ft_isupper('4'));
// 	printf("[-] Test with NULL [-]\n");
// 	printf("[+] Test return = %d [+]\n", ft_isupper(0));
// 	printf("[------] END OF FT_ISUPPER [------]\n");
// }
//
// void		check_islower(void)
// {
// 	printf("[------] FT_ISLOWER [------]\n");
// 	printf("[+] Test on %c, return = %d [+]\n", 'a', ft_islower('a'));
// 	printf("[+] Test on %c, return = %d [+]\n", 'z', ft_islower('z'));
// 	printf("[+] Test on %c, return = %d [+]\n", '*', ft_islower('*'));
// 	printf("[+] Test on %c, return = %d [+]\n", 'Z', ft_islower('Z'));
// 	printf("[+] Test on %c, return = %d [+]\n", 'A', ft_islower('A'));
// 	printf("[+] Test on %c, return = %d [+]\n", '0', ft_islower('0'));
// 	printf("[+] Test on %c, return = %d [+]\n", '9', ft_islower('9'));
// 	printf("[+] Test on %c, return = %d [+]\n", '4', ft_islower('4'));
// 	printf("[-] Test with NULL [-]\n");
// 	printf("[+] Test return = %d [+]\n", ft_islower(0));
// 	printf("[------] END OF FT_ISLOWER [------]\n");
// }

void		check_putchar(void)
{
	printf("[------] FT_PUTCHAR [------]\n");
	ft_putchar('a');
	ft_putchar('\n');
	ft_putchar('b');
	printf("\nDoit afficher : a\\nb\n");

	printf("[------] END OF FT_PUTCHAR [------]\n");
}

void		check_putchar_fd(void)
{
	printf("[------] FT_PUTCHAR_FD [------]\n");
	ft_putchar_fd('a', 1);
	ft_putchar_fd('\n', 1);
	ft_putchar_fd('b', 1);
	printf("\nDoit afficher : a\\nb\n");

	printf("[------] END OF FT_PUTCHAR_FD [------]\n");
}

void		check_puts_fd(void)
{
	printf("[------] FT_PUTS_FD [------]\n");
	ft_puts_fd("[+] a [+]", 1);
	ft_puts_fd("[+] $#@#',./,~!@~=+ [+]", 1);
	printf("[-] Test with null [-]\n");
	ft_puts_fd(NULL, 1);
	printf("[------] END OF FT_PUTS_FD [------]\n");
}

void		check_putstr(void)
{
	printf("[------] FT_PUTSTR [------]\n");
	ft_putstr("[+] a [+]\n");
	ft_putstr("[+] $#@#',./,~!@~=+ [+]\n");
	printf("[-] Test with null [-]\n");
	ft_putstr(NULL);
	printf("[------] END OF FT_PUTSTR [------]\n");
}

void		check_putstr_fd(void)
{
	printf("[------] FT_PUTSTR_FD [------]\n");
	ft_putstr_fd("[+] a [+]\n", 1);
	ft_putstr_fd("[+] $#@#',./,~!@~=+ [+]\n", 1);
	printf("[-] Test with null [-]\n");
	ft_putstr_fd(NULL, 1);
	printf("[------] END OF FT_PUTSTR_FD [------]\n");
}

void		check_strchr(void)
{
	char	*str;

	str = ft_strdup("Salut");
	printf("[------] FT_STRCHR [------]\n");
	printf("     Ret => %p\n", ft_strchr(str, 'a'));
	printf("Doit Ret => %p\n", strchr(str, 'a'));
	printf("[-] Test with null [-]\n");
	ft_putstr_fd(NULL, 1);
	printf("[------] END OF FT_STRCHR [------]\n");
}

int			main(void)
{
	//PART 1
	printf("[------] PART 1 [------] \n");
	check_bzero();
	printf("\n");
	check_strcat();
	printf("\n");
	check_alpha();
	printf("\n");
	check_digit();
	printf("\n");
	check_alnum();
	printf("\n");
	check_isascii();
	printf("\n");
	check_isprint();
	printf("\n");
	check_tolower();
	printf("\n");
	check_toupper();
	printf("\n");
	check_puts();
	printf("\n");

	// PART 2
	printf("[------] PART 2 [------] \n");
	check_strlen();
	printf("\n");
	check_memset();
	printf("\n");
	check_memcpy();
	printf("\n");
	check_strdup();
	printf("\n");

	// PART 3
	printf("[------] PART 3 [------] \n");
	check_cat();
	printf("\n");

	// BONUS
	printf("[------] BONUS [------] \n");
	check_putchar();
	printf("\n");
	check_putchar_fd();
	printf("\n");
	check_puts_fd();
	printf("\n");
	check_putstr();
	printf("\n");
	check_putstr_fd();
	printf("\n");
	check_strchr();
	printf("\n");
	check_isspace();
	printf("\n");
	// check_abs();
	// printf("\n");
	// check_min();
	// printf("\n");
	// check_max();
	// printf("\n");
	// check_isupper();
	// printf("\n");
	// check_islower();
	// printf("\n");

	printf("[------] END OF TESTS [------] \n");
	return 0;
}
