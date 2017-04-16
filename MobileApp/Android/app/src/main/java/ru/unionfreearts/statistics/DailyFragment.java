package ru.unionfreearts.statistics;

import android.app.Fragment;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;

import ru.unionfreearts.ui.TableAdapter;
import ru.unionfreearts.ui.TableRow;

public class DailyFragment extends Fragment {
    private MainActivity act;
    private TableAdapter adTable;
    private View container;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        act = (MainActivity) getActivity();
        act.setTitle(getResources().getString(R.string.daily_statistics));
        this.container = inflater.inflate(R.layout.fragment_daily, container, false);
        initTable();
        return this.container;
    }

    private void initTable() {
        ListView lvTable = (ListView) container.findViewById(R.id.lvTable);
        adTable = new TableAdapter(act);
        adTable.addItem(new TableRow(getResources().getString(R.string.date),
                getResources().getString(R.string.count_new_pages)));
        adTable.getItem(0).setBold(true);
        String[] mDates = new String[]{"15.02.2015", "16.02.2015", "17.02.2015",
                "18.02.2015", "18.02.2015", "19.02.2015", "20.02.2015"};
        int[] mCount = new int[]{1, 2, 0, 4, 1, 9, 2};
        int k = 0;
        for (int i = 0; i < mDates.length; i++) {
            adTable.addItem(new TableRow(mDates[i], mCount[i]));
            k += mCount[i];
        }
        adTable.addItem(new TableRow(getResources().getString(R.string.total_for_period), k));
        adTable.getItem(adTable.getCount() - 1).setBold(true);
        lvTable.setAdapter(adTable);
    }
}
