package org.students;

public class TicketIDGenerator 
{
	private static int ticketId = 1;

	public int[] getTicketIds(int totTickets) 
	{
		int arr[] = new int[totTickets];
		for(int i=0;i<arr.length;i++){
			arr[i] = ticketId++;
		}

		return arr;
	}
}
