<th>Action</th>
            </tr>
            @if(count($data) > 0)

                @foreach($data as $row)

                    <tr>
                        <td><img src="{{ asset('images/' . $row->student_image) }}" width="75" /></td>
                        <td>{{ $row->student_name }}</td>
                        <td>{{ $row->student_email }}</td>
                        <td>{{ $row->student_gender }}</td>
                        <td>
                            <form method="post" action="{{ route('students.destroy', $row->id) }}">
                                @csrf
                                @method('DELETE')
                                <a href="{{ route('students.show', $row->id) }}" class="btn btn-primary btn-sm">View</a>
                                <a href="{{ route('students.edit', $row->id) }}" class="btn btn-warning btn-sm">Edit</a>
                                <input type="submit" class="btn btn-danger btn-sm" value="Delete" />
                            </form>

                        </td>
                    </tr>

                @endforeach

            @else
                <tr>
                    <td colspan="5" class="text-center">No Data Found</td>
                </tr>
            @endif
        </table>
        {!! $data->links() !!}
    </div>
</div>

@endsection
