{-
 	Дан массив с положительными числами и число N. Вы должны найти N-ую степень элемента в массиве с индексом N. Если N за границами массива, тогда вернуть -1. Не забывайте, что первый элемент имеет индекс 0.

	Давайте посмотрим на несколько примеров:
	- массив = [1, 2, 3, 4] и N = 2, тогда результат 32 == 9;
	- массив = [1, 2, 3] и N = 3, но N за границами массива, так что результат -1.

	Входные значения: Два агумента. Массив как список целых и число как целое.

	Выходные значения: Целое число.

	Пример:

	index_power [1, 2, 3, 4] 2 == 9

	index_power [1, 3, 10, 100] 3 == 1000000

	index_power [0, 1] 0 == 1

	index_power [1, 2] 3 == -1
-}

index_power :: (Num a) => [a] -> Int -> a
index_power [] n = error "list is empty"
index_power list n = 
	if length list >= n then
		(list !! n) ^ n
	else
		-1	
